<template>
  <div class="wrap">
    <div class="row" v-if="isLoading">
      <h1 style="text-align:center">Cargando......</h1>
    </div>

    <div class="row clearfix" v-if="!isLoading">
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-teal hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">contacts</i>
          </div>
          <div class="content">
            <div class="text">Capataces</div>
            <div class="number">{{ info.total_customer }}</div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-orange hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">people</i>
          </div>
          <div class="content">
            <div class="text">Proveedores</div>
            <div class="number">{{ info.total_vendor }}</div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-deep-purple hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">category</i>
          </div>
          <div class="content">
            <div class="text">Productos</div>
            <div class="number">{{ info.total_product }}</div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-blue-grey hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">receipt</i>
          </div>
          <div class="content">
            <div class="text">Facturas</div>
            <div class="number">{{ info.total_invoice }}</div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-indigo hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">local_mall</i>
          </div>
          <div class="content">
            <div class="text">Existencia total</div>
            <div class="number">
              <small>{{ info.total_quantity }}</small>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-pink hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">local_shipping</i>
          </div>
          <div class="content">
            <div class="text">Existencia vendida</div>
            <div class="number">
              <small>{{ info.total_sold_quantity }}</small>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="info-box bg-blue hover-zoom-effect">
      <div class="icon">
        <i class="material-icons">bar_chart</i>
      </div>
      <div class="content">
        <div class="text">Existencia actual</div>
        <div class="number">
          <small>{{ info.total_current_quantity }}</small>
        </div>
      </div>
    </div>
  </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-deep-orange hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">payment</i>
          </div>
          <div class="content">
            <div class="text">Importe vendido</div>
            <div class="number">
              <small>$ {{ info.total_sold_amount }}</small>
            </div>
          </div>
        </div>
      </div>


  


  




  


    </div>
  </div>
</template>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
import Swal from 'sweetalert2';

export default {
  data() {
    return {
      info: {
        total_current_quantity: 5 // Ejemplo de cantidad actual
      }
    };
  },
  watch: {
    'info.total_current_quantity'(newVal) {
      if (newVal < 10) {
        this.showLowStockAlert();
      }
    }
  },
  methods: {
    showLowStockAlert() {
      Swal.fire({
        icon: 'warning',
        title: '¡Stock bajo!',
        text: 'La cantidad actual es baja, REVISAR!.',
        showConfirmButton: true
      });
    }
  }
};
</script>