<p>Micrsoft Windows All 版本的 (GVLK)產品密鑰 ，請<a href="https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys" data-linktype="external">按此處</a>參考Microsoft官方說明網站</p>


<p>適用於 Microsoft Office 所有版本(GVLK)產品密鑰 ，請<a href="https://docs.microsoft.com/zh-tw/DeployOffice/vlactivation/gvlks" data-linktype="external">按此處</a>參考Microsoft官方說明網站</p>


<table>
<thead>
<tr>


  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
</div>
Step 1: You go to the taskbar and type cmd => then you right-click Command Prompt and select Run as administrator
<img alt="      " src="https://i.ibb.co/m8j8PrS/Virtual-Box-Windows-11-21-07-2021-16-48-16.png"/>



Step 2: You type the command “slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
<img alt="    " src="https://i.ibb.co/3pzGXDL/Virtual-Box-Windows-11-21-07-2021-16-48-16.png"/>

Step 3: You use the command “slmgr /skms KMS.xxxxx.com” 

<img alt="    " src="https://i.ibb.co/rkXvgKh/image.png"/>

Step 4: Then you type the command “slmgr /ato”.

<img alt="   " src="https://i.ibb.co/N3Rx9kK/2.png"/>

Done.


You check the activation status again.
<img alt="   " src="https://i.ibb.co/4T3JVHT/3.png"/>

</div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


</div>
</div>


Micrsoft Office Professional Plus 2019 /2021 Retail 官方原版轉換為VL 版

<p> Office Professional Plus 2019 簡單的激活方法：<br/>當您安装完成 Office Professional Plus 2019 Retail 官方原版後，將下面的代碼保存為 .bat 文件，然後以管理員的權限運行，即可一步完成所有的激活操作</p>
<pre><code>if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16"
if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16"
for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2019VL_KMS*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x"
for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2019VL_MAK*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x"
cscript ospp.vbs /inpkey:NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP
cscript ospp.vbs /sethst:kms.xxx.com
cscript ospp.vbs /unpkey:8MBCX
cscript ospp.vbs /act</code></pre></div>
            </div>



<p>Office Professional Plus 2021 簡單激活方法：<br/>當您安装完成 Office Professional Plus 2021 Retail 官方原版後，將下面的代碼保存為 .bat 文件，然後以管理員的權限運行，即可一步完成所有的激活操作</p>
<pre><code>if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16"
if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16"
for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2021VL_KMS*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x"
for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2021VL_MAK*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x"
cscript ospp.vbs /inpkey:FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH
cscript ospp.vbs /sethst:kms.xxx.com
cscript ospp.vbs /unpkey:8MBCX
cscript ospp.vbs /act</code></pre></div>
            </div>









