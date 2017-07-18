.class Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;
.super Ljava/lang/Object;
.source "WifiApConfigStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiApConfigStore$ActiveState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore$ActiveState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;->this$1:Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;->this$1:Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;->this$1:Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    iget-object v1, v1, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->-get3(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->-wrap2(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;->this$1:Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    const v1, 0x2001a

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(I)V

    .line 136
    return-void
.end method
