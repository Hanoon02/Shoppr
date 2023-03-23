import LoginPage from "./Pages/Login";
import {BrowserRouter, Routes, Route} from 'react-router-dom';
import HomePage from "./Pages/Home";
function App() {
  return (
    <div className="App">
        <BrowserRouter>
            <Routes>
                <Route path={'/'} element={<LoginPage/>}/>
                <Route path={'/home'} element={<HomePage/>}/>
            </Routes>
        </BrowserRouter>
    </div>
  );
}

export default App;
