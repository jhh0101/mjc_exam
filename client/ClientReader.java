package after0602.q0624.client;

import java.io.DataInputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;

public class ClientReader implements Runnable {

    private Client client;
    private DataInputStream input;
    public ClientReader(Client client, DataInputStream input) {
        this.client = client;
        this.input = input;
    }

    @Override
    public void run() {
        try {
            while (true) {
                    String receive = input.readUTF();
                    System.out.println(receive);
            }
        } catch (IOException e) {
            System.out.println("client read 중 예외 발생");
        } finally {
            client.close();
            System.exit(0);
        }
    }

}
