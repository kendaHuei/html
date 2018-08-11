<%@ WebHandler Language="C#" Class="WSHandler" %>

using System;
using System.Web;
using System.Threading.Tasks;
using System.Web.WebSockets;
using System.Net.WebSockets;
using System.Text;
using System.Threading;

public class WSHandler : IHttpHandler {

  public void ProcessRequest( HttpContext context ) {
    if ( context.IsWebSocketRequest )
      context.AcceptWebSocketRequest( MyWebSocketHandler );
    else
      context.Response.StatusCode = 400; 
  }

  public async Task MyWebSocketHandler( AspNetWebSocketContext context ) {
    WebSocket socket = context.WebSocket;
    
    while ( true ) {
      ArraySegment<byte> buffer = new ArraySegment<byte>( new byte[ 1024 ] );
      WebSocketReceiveResult r =await socket.ReceiveAsync( buffer , CancellationToken.None );

      if ( socket.State == WebSocketState.Open ) {
        
        string msg = Encoding.UTF8.GetString( buffer.Array , 0 , r.Count );
        msg = "伺服端收到你傳送的訊息 : " + msg + "  時間 : " + DateTime.Now.ToString( );
    
        buffer = new ArraySegment<byte>( Encoding.UTF8.GetBytes( msg ) );
        await socket.SendAsync( buffer , WebSocketMessageType.Text ,true , CancellationToken.None );
      }
    }
  }
  public bool IsReusable {
    get {
      return false;
    }
  }
}