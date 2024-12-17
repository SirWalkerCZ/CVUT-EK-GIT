```
#define UART_IT_PE 0x0028U /*!< UART parity error interruption */

#define UART_IT_TXE 0x0727U /*!< UART transmit data register empty interruption */

#define UART_IT_TXFNF 0x0727U /*!< UART TX FIFO not full interruption */

#define UART_IT_TC 0x0626U /*!< UART transmission complete interruption */

#define UART_IT_RXNE 0x0525U /*!< UART read data register not empty interruption */

#define UART_IT_RXFNE 0x0525U /*!< UART RXFIFO not empty interruption */

#define UART_IT_IDLE 0x0424U /*!< UART idle interruption */

#define UART_IT_LBD 0x0846U /*!< UART LIN break detection interruption */

#define UART_IT_CTS 0x096AU /*!< UART CTS interruption */

#define UART_IT_CM 0x112EU /*!< UART character match interruption */

#define UART_IT_WUF 0x1476U /*!< UART wake-up from stop mode interruption */

#define UART_IT_RXFF 0x183FU /*!< UART RXFIFO full interruption */

#define UART_IT_TXFE 0x173EU /*!< UART TXFIFO empty interruption */

#define UART_IT_RXFT 0x1A7CU /*!< UART RXFIFO threshold reached interruption */

#define UART_IT_TXFT 0x1B77U /*!< UART TXFIFO threshold reached interruption */

#define UART_IT_RTO 0x0B3AU /*!< UART receiver timeout interruption */
```