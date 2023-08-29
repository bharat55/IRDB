import React from "react";
import { useQuery, gql } from "@apollo/client";

const GET_BOOKS = gql`
  query GetBooks {
    books {
      id
      name
      authorName
      publishedAt
      tagLine
      category
      summary
      imageUrls
    }
  }
`;

function Books() {
  const { loading, error, data } = useQuery(GET_BOOKS);

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error : {error.message}</p>;

  return data.books.map(
    ({ id, name, authorName, publishedAt, tagLine, category, summary }) => (
      <div key={id}>
        <h3>{name}</h3>
        <div>{authorName}</div>
        <div>{publishedAt}</div>
        <div>{tagLine}</div>
        <div>{category}</div>
        <div>{summary}</div>
      </div>
    )
  );
}

export default Books;
