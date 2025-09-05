# 🛒 Proyecto MySQL - Ecommerce

Este proyecto contiene un script SQL que define la **estructura** y **datos de ejemplo** para una base de datos de comercio electrónico.  
Es ideal para practicar modelado, consultas SQL y gestión de datos en MySQL.

---

## 📂 Contenido del repositorio
- `ecommerce.sql` → Script SQL con:
  - Creación de tablas con llaves primarias y foráneas.
  - Inserción de datos de prueba en **clientes, categorías, productos, pedidos, detalles de pedidos, envíos y facturas**.
- `README.md` → Documentación del proyecto.

---

## 🏗️ Tablas principales
- **clientes** → Información de los clientes.  
- **categorias** → Clasificación de los productos.  
- **productos** → Catálogo con precios, stock y categoría.  
- **pedidos** → Órdenes realizadas por los clientes.  
- **detalles_pedido** → Productos y cantidades en cada pedido.  
- **envios** → Datos de entrega y costos de envío.  
- **facturas** → Totales facturados de cada pedido.

---

## 🚀 Cómo usar este proyecto

### 1️⃣ Clonar el repositorio
```bash
git clone https://github.com/juanjosecampanella/mysql-ecommerce.git
cd mysql-ecommerce
