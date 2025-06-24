package after0602.q0624.client;

import after0602.q0623.chat.SocketClosed;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;

public class Client {

    private final String ipAddress;
    private final int port;
    private Socket socket;
    private DataInputStream input;
    private DataOutputStream output;
    private ClientWriter clientWriter;
    private ClientReader clientReader;

    public Client(String ipAddress, int port) throws IOException {
        this.ipAddress = ipAddress;
        this.port = port;
    }

    public void start() throws IOException {
        socket = new Socket(ipAddress,port);
        input = new DataInputStream(socket.getInputStream());
        output = new DataOutputStream(socket.getOutputStream());
        clientWriter = new ClientWriter(this, output);
        clientReader = new ClientReader(this, input);
        Thread threadWriter = new Thread(clientWriter, "Thread-writer");
        Thread threadReader = new Thread(clientReader, "Thread-reader");
        threadReader.start();
        threadWriter.start();
    }

    public synchronized void close() {
        SocketClosed.close(socket,input,output);
    }
}
