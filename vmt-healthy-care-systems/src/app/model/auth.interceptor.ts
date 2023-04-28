import {Injectable} from '@angular/core';
import {
  HttpRequest,
  HttpHandler,
  HttpEvent,
  HttpInterceptor
} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Router} from '@angular/router';
import {TokenStorageService} from '../service/token-storage.service';

// Đây là hằng số được định nghĩa để đại diện cho tiêu đề HTTP mà interceptor
// sẽ sử dụng để bỏ qua xử lý các yêu cầu HTTP cụ thể. Trong trường hợp này,
// hằng số được đặt tên là InterceptorSkipHeader và giá trị của nó là X-Skip-Interceptor.
// (Dùng để bỏ qua nếu là request yêu cầu lấy token, tức là request lúc login)
export const InterceptorSkipHeader = 'X-Skip-Interceptor';

@Injectable()
// AuthInterceptor được sử dụng để thêm token vào tiêu đề Authorization của các yêu cầu HTTP
export class AuthInterceptor implements HttpInterceptor {

  constructor(private tokenService: TokenStorageService) {
  }

  intercept(request: HttpRequest<unknown>, next: HttpHandler): Observable<HttpEvent<unknown>> {
    let authRequest = request;
    // lấy token từ TokenStorageService
    const token = this.tokenService.getToken();
    console.log('Token là:' + token);

    // Nếu tiêu đề HTTP của yêu cầu là X-Skip-Interceptor,
    // sẽ bỏ qua interceptor này và chuyển tiếp yêu cầu tới tới backend.
    if (authRequest.headers.has(InterceptorSkipHeader)) {
      // xóa tiêu đề X-Skip-Interceptor khỏi reuqest
      const headers = request.headers.delete(InterceptorSkipHeader);
      // chuyển tiếp request
      return next.handle(authRequest.clone({headers}));
    }

    // Nếu token không bằng null
    if (token != null) {
      // thêm token vào request, ở đây thêm tiêu đề là Authorization, và value là Bearer + token
      authRequest = request.clone({headers: request.headers.set('Authorization', 'Bearer ' + token)});
      console.log('Token là:' + authRequest);
    }
    // chuyển tiếp request tới back end
    return next.handle(authRequest);
  }
}
// đăng ký interceptor này trong AppModule
//  providers: [
//     {
//       provide: HTTP_INTERCEPTORS,
//       useClass: TokenInterceptor,
//       multi: true
//     }
//   ]
