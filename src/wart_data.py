
class Wart(object):

    def __init__(self, ureg):
        self.ureg = ureg

    def load(self):
        u = self.ureg

        # recorded flight data
        self.H = 147 * u.feet
        self.Phi = 47 * u.degree
        self.w_m = 0.86 * u.gram
        self.w_a = 1.2 * u.gram
        self.m_w = 36/1000.0 * u.inch
        self.m_t = 38/1000.0 * u.inch
        self.m_l = 18 * u.inch
        self.a_w = 1.2 * u.gram
        self.n = 3660 * u.turn
        self.t_m = 10 * u.minutes
        self.t_s = 18 * u.second



    def get_properties(self):

        # generate calculated properties

        # motor data
        self.m_x = self.m_w * self.m_t
        self.m_v = self.m_x * self.m_l
        self.m_rho = self.w_m / self.m_v
        self.n_rho = self.m_v / self.n
        
        # flight data
        self.t = self.t_m + self.t_s
        self.n_avg = (self.n / self.t)
        self.w = self.w_m + self.w_a
        self.H_e = self.H/(483* u.foot * (self.w_m/self.w))

        result = {
            'H':  self.H,
            'Phi': self.Phi,
            'w_m': self.w_m,
            'm_w': self.m_w,
            'm_t': self.m_t,
            'm_l': self.m_l,
            'm_x': self.m_x,
            'm_v': self.m_v,
            'm_rho': self.m_rho,
            't': self.t.to(u.second),
            'n_rho': self.n_rho,
            'n_avg': self.n_avg,
            'H_e': self.H_e,
        }
        return result
        
if __name__ == '__main__':
    import pint
    u = pint.UnitRegistry()
    w = Wart(u)
    w.load()
    p = w.get_properties()
    for key in p:
        print(f'{key} = {p[key]}')

    print(f"Motor Volume = {p['m_v']:.6e}")
