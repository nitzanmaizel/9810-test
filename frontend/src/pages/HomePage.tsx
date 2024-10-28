import React from "react";
import { Box } from "@mui/material";

import PageWrapper from "@/components/Layout/PageWrapper";
import { useUser } from "@/hooks/useUser";
import fetchAPI from "../services/apiServices";

const HomePage: React.FC = () => {
  const { userInfo } = useUser();

  React.useEffect(() => {
    const fetchDoc = async () => {
      const response = await fetchAPI(
        "/sheet/1K6uxo9KYDV9xqf6AJHDpCdXrMG2xfVLCBQ5UPJG1fdM"
      );
      console.log({ response });
    };
    fetchDoc();
  }, []);

  return (
    <PageWrapper>
      <Box>
        <h1>Welcome, {userInfo?.username}!</h1>
      </Box>
    </PageWrapper>
  );
};

export default HomePage;
