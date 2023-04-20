import LoginPage from "./Pages/Login";
import {BrowserRouter, Routes, Route} from 'react-router-dom';
import HomePage from "./Pages/Home/Home";
import VendorHome from "./Pages/VendorHome";
import LoginState from "./Context/loginState";
import Cart from "./Pages/Cart";
import ProfilePage from "./Pages/Profile";
import ShopAll from "./Pages/ShopAll/ShopAll";
import Footer from "./Components/Footer";

function App() {
  return (
    <div className="App">
        <LoginState>
            <BrowserRouter>
                <Routes>
                    <Route path={'/'} element={<LoginPage/>}/>
                    <Route path={'/home'} element={<HomePage/>}/>
                    <Route path={'/shopall'} element={<ShopAll/>}/>
                    <Route path={'/vendor'} element={<VendorHome/>}/>
                    <Route path={'/cart'} element={<Cart/>}/>
                    <Route path={'/profile'} element={<ProfilePage/>}/>
                </Routes>
            </BrowserRouter>
        </LoginState>
    </div>
  );
}

export default App;
