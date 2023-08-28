import * as React from "react";
import { createRoot } from "react-dom/client";

import {
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
  createHttpLink,
} from "@apollo/client";
import { setContext } from "@apollo/client/link/context";

import App from "./App";

const httpLink = createHttpLink({
  uri: "/graphql",
});

const authLink = setContext((_, { headers }) => {
  const csrfToken = document
    .querySelector('meta[name="csrf-token"]')
    .getAttribute("content");
  return {
    headers: {
      ...headers,
      "X-CSRF-Token": csrfToken,
    },
  };
});

const client = new ApolloClient({
  link: authLink.concat(httpLink),
  cache: new InMemoryCache(),
});

document.addEventListener("DOMContentLoaded", () => {
  const container = document.getElementById("root");
  const root = createRoot(container); // createRoot(container!) if you use TypeScript
  root.render(
    <ApolloProvider client={client}>
      <App />
    </ApolloProvider>
  );
});
