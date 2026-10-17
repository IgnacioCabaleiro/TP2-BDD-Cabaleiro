# language: es

Característica: Crear Grupo para repartir gastos

  Regla: Los grupos están compuestos por al menos dos miembros

    Escenario: No puedo crear un grupo con un único miembro
      Cuando el usuario intenta crear un grupo indicando un único miembro
      Entonces no debería crear el grupo con un único miembro

  Regla: Los miembros de un grupo no pueden repetirse

    Escenario: No puedo crear un grupo con un miembro repetido
      Cuando el usuario intenta crear un grupo indicando que sus miembros son 'Ana', 'Juan' y 'Ana'
      Entonces no debería crear el grupo con miembros repetidos

    Escenario: No puedo crear un grupo con el mismo miembro escrito con distintas mayúsculas
      Cuando el usuario intenta crear un grupo indicando que sus miembros son 'Ana' y 'ana'
      Entonces no debería crear el grupo con miembros repetidos

    @pendiente
    Escenario: Puedo crear un grupo con miembros de nombres parecidos
      Cuando el usuario intenta crear un grupo indicando que sus miembros son 'Ana' y 'Anabella'
      Entonces debería crear el grupo
