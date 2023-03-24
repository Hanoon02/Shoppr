import LoginPage from "./Pages/Login";
import {BrowserRouter, Routes, Route} from 'react-router-dom';
import HomePage from "./Pages/Home";
import VendorHome from "./Pages/VendorHome";
import LoginState from "./Context/loginState";
import Cart from "./Pages/Cart";

function App() {
  return (
    <div className="App">
        <LoginState>
            <BrowserRouter>
                <Routes>
                    <Route path={'/'} element={<LoginPage/>}/>
                    <Route path={'/home'} element={<HomePage/>}/>
                    <Route path={'/vendor'} element={<VendorHome/>}/>
                    <Route path={'/cart'} element={<Cart/>}/>
                </Routes>
            </BrowserRouter>
        </LoginState>
    </div>
  );
}

export default App;
