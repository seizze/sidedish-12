import React, { useEffect } from "react";

const useFetch = (setState, url) => {
  const initFetchData = async () => {
    const response = await fetch(url);
    const initialData = await response.json();
    setState(initialData);
  };

  useEffect(() => {
    initFetchData();
  }, []);
};

export default useFetch;
