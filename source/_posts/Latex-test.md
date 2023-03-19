---
layout: latex_test
title: LaTeX 测试
date: 2022-11-06 11:54:48
tags:
mathjax: true
---

  -----------------
  **BP算法**
  
  训练集	$\left\{\left(x^{(1)}, y^{(1)}\right), \ldots,\left(x^{(m)}, y^{(m)}\right)\right\}$
  
  设	$\Delta_{i j}^{(l)}=0(\text { for all } l, i, j)$
  
  $\begin{array}{l}{\text {For } i=1 \text { to } m}\end{array}$
  
  $$
  \begin{array}{l}{\text { Set } a^{(1)}=x^{(i)}} \\ {\text { Perform forward propagation to compute } a^{(l)} \text { for } l=2,3, \ldots, L} \\ {\text { Using } y^{(i)}, \text { compute } \delta^{(L)}=a^{(L)}-y^{(i)}} \\ {\text { Compute } \delta^{(L-1)}, \delta^{(l+1)}, \ldots, \delta^{(2)}} \\ {\Delta_{i j}^{(l)} :=\Delta_{i j}^{(l)}+a_{j}^{(l)} \delta_{i}^{(l+1)}}\end{array}
  $$
  
  $\begin{array}{l}{D_{i j}^{(l)} :=\frac{1}{m} \Delta_{i j}^{(l)}+\lambda \Theta_{i j}^{(l)}} & {\text { if } j \neq 0} \\ {D_{i j}^{(l)} :=\frac{1}{m} \Delta_{i j}^{(l)}} & {\text { if } j=0}\end{array}$
  
  其中	$\frac{\partial}{\partial \Theta_{i j}^{(l)}} J(\Theta)=D_{i j}^{(l)}$
  
  -----------------

