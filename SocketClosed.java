package after0602.q0624;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;

public abstract class SocketClosed {

    public static void close(Socket socket, DataInputStream input , DataOutputStream output) {
        outputClose(output);
        inputClose(input);
        socketClose(socket);

    }

    private static void socketClose(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (IOException e) {
                System.out.println("socket close 중 오류 발생 ");
            }
        }
    }

    private static void inputClose(DataInputStream input) {
        if (input != null) {
            try {
                input.close();
            } catch (IOException e) {
                System.out.println("input close 중 오류 발생 ");

            }
        }
    }

    private static void outputClose(DataOutputStream output) {
        if (output != null) {
            try {
                output.close();
            } catch (IOException e) {
                System.out.println("output close 중 오류 발생 ");

            }
        }
    }

}
