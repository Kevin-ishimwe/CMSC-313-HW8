#include <iostream>
using namespace std;

const int ROW = 2;
const int COL = 3;

class Matrix {
public:
    Matrix(int A_[ROW][COL], int B_[ROW][COL], int C_[ROW][COL]) {
        for (int i = 0; i < ROW; i++)
            for (int j = 0; j < COL; j++) {
                A[i][j] = A_[i][j];
                B[i][j] = B_[i][j];
                C[i][j] = C_[i][j];
            }
    }

    void transMatracies(int mat[ROW][COL], int out[COL][ROW]) {
        for (int i = 0; i < ROW; i++)
            for (int j = 0; j < COL; j++)
                out[j][i] = mat[i][j];
    }

    void mulMatrix(int num, int mat[ROW][COL], int results[ROW][COL]) {
        for (int i = 0; i < ROW; i++)
            for (int j = 0; j < COL; j++)
                results[i][j] = mat[i][j] * num;
    }

    void mulMatracies(int mat1[ROW][COL], int mat2[COL][ROW], int results[ROW][COL]) {
        for (int i = 0; i < ROW; i++)
            for (int j = 0; j < ROW; j++) {
                results[i][j] = 0;
                for (int k = 0; k < COL; k++)
                    results[i][j] += mat1[i][k] * mat2[k][j];
            }
    }

    void addMatracies(int mat1[ROW][COL], int mat2[ROW][COL], int results[ROW][COL]) {
        for (int i = 0; i < ROW; i++)
            for (int j = 0; j < ROW; j++)
                results[i][j] = mat1[i][j] + mat2[i][j];  
    }

    void printMatrix(int mat[ROW][COL]) {
        for (int i = 0; i < ROW; i++) {
            for (int j = 0; j < ROW; j++) 
                cout << mat[i][j] << " ";
            cout << endl;
        }
    }

    void TestD() {
        int C_T[COL][ROW];
        int threeB[ROW][COL];
        int mult[ROW][COL]; 

        transMatracies(C, C_T);
        mulMatrix(3, B, threeB);
        mulMatracies(threeB, C_T, mult);
        cout << "D = A + 3 * B x transpose(C):\n";
        addMatracies(A, mult, results);
        printMatrix(results);
    }

private:
    int A[ROW][COL];
    int B[ROW][COL];
    int C[ROW][COL];
    int results[ROW][COL];  
};


int main() {
    int A[ROW][COL] = {{6, 4, 0}, {8, 3, 0}};
    int B[ROW][COL] = {{1, 2, 3}, {4, 5, 6}};
    int C[ROW][COL] = {{2, 4, 6}, {1, 3, 5}};
    Matrix mx(A, B, C);
    mx.TestD();
    return 0;
}
