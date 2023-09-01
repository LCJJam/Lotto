package com.lotto.dev.crawlerExample;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Objects;

public class WebCrawlerExample {
    public static void main(String[] args) {
        String url = "https://dhlottery.co.kr/gameResult.do?method=byWin"; // 크롤링할 웹 페이지 URL

        try {
            Document document = Jsoup.connect(url).get(); // 웹 페이지에 연결하여 HTML 가져오기
            System.out.println(document.charset());


            // 원하는 테이블 선택하기 (여기서는 첫 번째 테이블 선택)
            Element table = document.select("table").first();
            Element dwrNo = document.select("select").first();

            // 테이블 안의 모든 <td> 요소 선택하기
            Elements tdElements = table.select("td");

            for (Element td : tdElements) {
                String tdText = td.text(); // <td> 안의 텍스트 내용 가져오기
                System.out.println("TD Value: " +  tdText);
            }

            System.out.println(
                    dwrNo
                            .select("option")
                            .first()
                            .text()
            );

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}