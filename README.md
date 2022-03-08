
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









