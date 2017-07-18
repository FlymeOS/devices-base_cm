.class final Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenStateObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;
    }
.end annotation


# static fields
.field private static final MESSAGE_ON_SCREEN_STATE_CHANGE:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->handleOnScreenStateChange(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "magnificationController"    # Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1127
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mHandler:Landroid/os/Handler;

    .line 1141
    iput-object p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    .line 1142
    iput-object p3, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    .line 1143
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1140
    return-void
.end method

.method private handleOnScreenStateChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->-wrap2(Landroid/content/Context;)Z

    move-result v0

    .line 1157
    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    .line 1156
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1146
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->mHandler:Landroid/os/Handler;

    .line 1153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1152
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1151
    return-void
.end method
