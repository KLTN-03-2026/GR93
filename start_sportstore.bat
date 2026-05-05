@echo off
set ROOT_DIR=C:\xampp\htdocs\KLTN_goc_decopy

echo 🚀 Khoi dong he thong SportStore KLTN...

:: 1. Backend Laravel
start cmd /k "cd /d %ROOT_DIR%\sportstore-be && echo 🔥 Khoi dong Backend Laravel... && php artisan serve"

:: Queue
start cmd /k "cd /d %ROOT_DIR%\sportstore-be && echo 🔥 Khoi dong Queue... && php artisan queue:work"

:: 2. Frontend NextJS
start cmd /k "cd /d %ROOT_DIR%\sportstore-client && echo ⚛️ Khoi dong Frontend NextJS... && yarn run dev"

:: 3. AI Service (FastAPI)
start cmd /k "cd /d %ROOT_DIR%\sportstore-ai && echo 🤖 Khoi dong AI Service... && call venv\Scripts\activate && uvicorn app.main:app --host 0.0.0.0 --port 8001 --reload"

echo ✅ Da mo cac cua so cho Backend, Frontend va AI!
echo Frontend: http://localhost:3000
echo Backend:  http://localhost:8000
echo AI API:   http://localhost:8001

pause