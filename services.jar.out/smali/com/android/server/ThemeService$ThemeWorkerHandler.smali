.class Lcom/android/server/ThemeService$ThemeWorkerHandler;
.super Landroid/os/Handler;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeWorkerHandler"
.end annotation


# static fields
.field private static final MESSAGE_APPLY_DEFAULT_THEME:I = 0x2

.field private static final MESSAGE_CHANGE_THEME:I = 0x1

.field private static final MESSAGE_REBUILD_RESOURCE_CACHE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThemeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    .line 138
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 143
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 155
    # getter for: Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThemeService;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ThemeChangeRequest;

    .line 146
    .local v0, "request":Landroid/content/res/ThemeChangeRequest;
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    :goto_1
    # invokes: Lcom/android/server/ThemeService;->doApplyTheme(Landroid/content/res/ThemeChangeRequest;Z)V
    invoke-static {v2, v0, v1}, Lcom/android/server/ThemeService;->access$000(Lcom/android/server/ThemeService;Landroid/content/res/ThemeChangeRequest;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 149
    .end local v0    # "request":Landroid/content/res/ThemeChangeRequest;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->doApplyDefaultTheme()V
    invoke-static {v1}, Lcom/android/server/ThemeService;->access$100(Lcom/android/server/ThemeService;)V

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    # invokes: Lcom/android/server/ThemeService;->doRebuildResourceCache()V
    invoke-static {v1}, Lcom/android/server/ThemeService;->access$200(Lcom/android/server/ThemeService;)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
