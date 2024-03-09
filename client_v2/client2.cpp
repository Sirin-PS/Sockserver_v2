#include <iostream>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <errno.h>
#include <string>
#include <math.h>

#define MSG_MAX_LEN 1024
#define GET_REQUEST "GET"
#define SET_REQUEST "SET"
#define OUT_REQUEST "OUT"

using namespace std;

int main(int argc, char *argv[]) {
    int sock;
    struct sockaddr_in addr;

    addr.sin_family = AF_INET;
    addr.sin_port = htons(8080);
    addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

    sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock < 0) {
        perror("socket");
        exit(EXIT_FAILURE);
    }
    if (connect(sock, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        perror("connect");
        exit(EXIT_FAILURE);
    }
    
    int choice = 0;
    cout << "Client program works!" << endl;
    do {
        cout << "\n\tPut value: 1" << endl;
        cout << "\tGet value: 2" << endl;
        cout << "\tExit: 3" << endl;
        cin >> choice;
        switch(choice) {
            case 1:     // PUT
            {                
                char msg_recv_buf[MSG_MAX_LEN];
                char msg_send_buf[MSG_MAX_LEN];
                char request_buf[] = SET_REQUEST;

                send(sock, request_buf, sizeof(request_buf), 0);
                cout << "\nrequest: " << request_buf << endl;
                cout << "\nEnter message for server:   ";
                cin.clear();
                cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
                cin.getline(msg_send_buf, MSG_MAX_LEN);

                send(sock, msg_send_buf, sizeof(msg_send_buf), 0);
                recv(sock, msg_recv_buf, MSG_MAX_LEN, 0);
                cout << "Msg from server:   " << msg_recv_buf << endl;
                break;
            }
            case 2:     // GET
            {
                char msg_recv_buf[MSG_MAX_LEN];
                char request_buf[] = GET_REQUEST;
                send(sock, request_buf, sizeof(request_buf), 0);                
                recv(sock, msg_recv_buf, MSG_MAX_LEN, 0);
                cout << "Msg from server:   " << msg_recv_buf << endl;
                break;
            }
            case 3:
            {
                char request_buf[] = OUT_REQUEST;
                send(sock, request_buf, sizeof(request_buf), 0);
                cout << "\nBye!\n";
                break;
            }                
            default:
                cout << "\nUncorrect command. Try again!\n";
                break;
        }
    } while (choice != 3);

    close(sock);
    return 0;
}