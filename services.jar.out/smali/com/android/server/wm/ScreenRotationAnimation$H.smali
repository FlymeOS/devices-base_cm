.class final Lcom/android/server/wm/ScreenRotationAnimation$H;
.super Landroid/os/Handler;
.source "ScreenRotationAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenRotationAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final FREEZE_TIMEOUT_VAL:I = 0x1770

.field public static final SCREENSHOT_FREEZE_TIMEOUT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ScreenRotationAnimation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 1044
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1045
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1049
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1063
    const-string v0, "ScreenRotationAnimation"

    const-string v1, "No Valid Message To Handle"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1051
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Exceeded Freeze timeout. Destroy layers"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 1055
    const-string v0, "ScreenRotationAnimation"

    const-string v1, "No animation, exceeded freeze timeout. Destroy Screenshot layer"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 1058
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$H;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_0

    .line 1049
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
