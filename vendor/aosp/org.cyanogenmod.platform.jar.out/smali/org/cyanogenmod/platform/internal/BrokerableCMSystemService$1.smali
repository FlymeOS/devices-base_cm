.class Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$1;
.super Landroid/os/Handler;
.source "BrokerableCMSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;)V
    .locals 0

    .prologue
    .line 160
    .local p1, "this$0":Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;, "Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService<TT;>;"
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$1;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    invoke-static {}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unknown message"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$1;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->tryConnecting()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
