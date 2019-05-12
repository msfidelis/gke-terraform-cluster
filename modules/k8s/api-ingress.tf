// resource "kubernetes_ingress" "microapi" {
//   metadata {
//     name = "microapi"

//     annotations {
//       "ingress.kubernetes.io/rewrite-target" = "/"
//     }
//   }

//   spec {
//     backend {
//       service_name = "microapi"
//       service_port = 3000
//     }

//     rule {
//       host = "myminikube.info"

//       http {
//         path {
//           path_regex = "/*"

//           backend {
//             service_name = "microapi"
//             service_port = 3000
//           }
//         }
//       }
//     }

//     // rule {
//     //   host = "cheeses.all"

//     //   http {
//     //     path {
//     //       path_regex = "/stilton"

//     //       backend {
//     //         service_name = "stilton-cheese"
//     //         service_port = 80
//     //       }
//     //     }

//     //     path {
//     //       path_regex = "/cheddar"

//     //       backend {
//     //         service_name = "cheddar"
//     //         service_port = 80
//     //       }
//     //     }
//     //   }
//     // }
//   }
// }