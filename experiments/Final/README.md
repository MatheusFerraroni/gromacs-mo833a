## Informações básicas


### SO Hospedeiro
-- Sistema hospedeiro: Windows 10 PRO 64 bits versão 1903 (sem modificações)
-- Memória RAM: 16gb 2400 Mhz
-- Tipo de memória: SSD
-- Proecssador: I5-9600k 6 núcleos


### SO Emulado

-- Máquina virtual: Oracle VM VirtualBOX 6.1.14
-- Sistema emulado: Ubuntu 16.04.6 LTS 64 bits (sem modificações)
-- Memória RAM: 6gb 2400 Mhz
-- Tipo de memória: SSD
-- Proecssador: I5-9600k [1,4] núcleos

Vale ressaltar que a quantidade de núcleos do processador foi alternada entre 1 e 4 para a execução dos experimentos.


### Programas utilizados

-- perf 4.15.18
-- valgrind 3.11.0

## Arquivos gerados

- **p1.sh**: Arquivo com as instruções que foram utilizadas para executar as avaliações
- **callgrind.out.1293**: Resultado da execução do valgrind com 4 threads
- **single_thread_callgrind.out.2940**: Resultado da execução do valgrind com 1 thread
- **perf1.data**: Resultado do perf sem o parametro "-g" com 4 thrads
- **perf2.data**: Resultado do perf com o parametro "-g" com 4 thrads
- **perf3.data**: Resultado do perf sem o parametro "-g" com 1 thrads
- **perf4.data**: Resultado do perf com o parametro "-g" com 1 thrads
- **result1.txt**: Resultado ordenado do perf1.data
- **result2.txt**: Resultado ordenado do perf2.data
- **result3.txt**: Resultado ordenado do perf3.data
- **result4.txt**: Resultado ordenado do perf4.data
- **result_do_force1.txt**: Resultado filtrado pela palavra "do_force" e ordenado do perf1.data
- **result_do_force2.txt**: Resultado filtrado pela palavra "do_force" e ordenado do perf2.data
- **result_do_force3.txt**: Resultado filtrado pela palavra "do_force" e ordenado do perf3.data
- **result_do_force4.txt**: Resultado filtrado pela palavra "do_force" e ordenado do perf4.data
- **result_report_1**: Resultado do "perf report" perf1.data
- **result_report_2**: Resultado do "perf report" perf2.data
- **result_report_3**: Resultado do "perf report" perf3.data
- **result_report_4**: Resultado do "perf report" perf4.data

## Resultados


### PERF

#### 1 Thread

Resultado obtido com o perf report para o comando ```perf record``` com 1 thread
<p align="center">
	<img src="./perf_report_1_thread.png" width="732">
</p>

Resultado obtido com o perf report para o comando ```perf record -g``` com 1 thread
<p align="center">
	<img src="./perf_report_-g_1_thread.png" width="732">
</p>


#### 4 Threads

Resultado obtido com o perf report para o comando ```perf record``` com 4 thread
<p align="center">
	<img src="./perf_report_4_thread.png" width="732">
</p>

Resultado obtido com o perf report para o comando ```perf record -g``` com 4 thread
<p align="center">
	<img src="./perf_report_-g_4_thread.png" width="732">
</p>


### VALGRIND

#### 1 Thread
Resultado obtido com o valgrind para o comando ```valgrind --tool=callgrind``` com 1 thread
<p align="center">
	<img src="./valgrind_functions_1_thread.png" width="732">
</p>
<p align="center">
	<img src="./valgrind_call_graph_do_force_1_thread.png" width="732">
</p>

#### 4 Threads

Resultado obtido com o valgrind para o comando ```valgrind --tool=callgrind``` com 4 thread
<p align="center">
	<img src="./valgrind_functions_4_thread.png" width="732">
</p>
<p align="center">
	<img src="./valgrind_call_graph_do_force_4_thread.png" width="732">
</p>
