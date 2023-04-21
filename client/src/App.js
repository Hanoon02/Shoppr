import LoginPage from "./Pages/Login/Login";
import {BrowserRouter, Routes, Route} from 'react-router-dom';
import HomePage from "./Pages/Home/Home";
import VendorHome from "./Pages/VendorHome/VendorHome";
import LoginState from "./Context/Login/loginState";
import Cart from "./Pages/Cart/Cart";
import ProfilePage from "./Pages/Profile/Profile";
import ShopAll from "./Pages/ShopAll/ShopAll";

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
