 // con estuctura //
struct pilita{
  var arre: [String] = []
   mutating func agrega(_ elemento: String){
    arre.append(elemento)
  }// agrega elemento
  mutating func pop() -> String? {
    return arre.popLast()
  }// remover ultimo
  func peek() -> String? {
    return arre.last
  }
}

extension pilita: CustomStringConvertible {
    
    var description: String {
        
        let topDivider = "\n----------------  mi pila XD  ----------------\n\n"
        let bottomDivider = "\n\n-----------------------------------------\n"
        
        let stackElements = arre.reversed().joined(separator: "\n - ")
        
        return topDivider + " - " + stackElements + bottomDivider
        
    } 

} 

var pilaReal = pilita()

for i in 1...2 {
  print("ingresa el elemento " )
  let j = readLine()!
  pilaReal.agrega(j)
}

pilaReal.agrega("hola")
print(pilaReal)


// ECHO POR MIGUEL AnGEL GORDILLO TORRALBA 