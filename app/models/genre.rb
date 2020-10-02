class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '基本の家庭料理' },
    { id: 3, name: 'おもてなし料理' },
    { id: 4, name: 'スイーツ・お菓子' }
  ]
end