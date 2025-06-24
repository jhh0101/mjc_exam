package after0602.q0624.client;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.NoSuchElementException;
import java.util.Scanner;

public class ClientWriter implements Runnable {

    private Client client;
    private DataOutputStream output;
    private Scanner scanner = new Scanner(System.in);

    public ClientWriter(Client client, DataOutputStream output) {
        this.client = client;
        this.output = output;
    }

    @Override
    public void run() {
        try {
            System.out.println("=========================================================================");
            System.out.println("1:변경할이름(이름변경) , 2 방 목록보기 3:방 번호(방 입장) 4 방 생성 q 종료 ");
            System.out.println("=========================================================================");
            while (true) {
                String sendMessage = scanner.nextLine();
                if (sendMessage.isEmpty()) {
                    continue;
                }
                output.writeUTF(sendMessage);
            }
        } catch (IOException e) {
            System.out.println("client write 중 문제발생");
        } finally {
            System.out.println("client 자원을 종료합니다.");
            client.close();
        }

    }

}
