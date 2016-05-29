.class Lcom/android/internal/policy/impl/MzMotionGesture$2;
.super Landroid/database/ContentObserver;
.source "MzMotionGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MzMotionGesture;->registerEnableFullScreenDragSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MzMotionGesture;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MzMotionGesture;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzMotionGesture$2;->this$0:Lcom/android/internal/policy/impl/MzMotionGesture;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzMotionGesture$2;->this$0:Lcom/android/internal/policy/impl/MzMotionGesture;

    # invokes: Lcom/android/internal/policy/impl/MzMotionGesture;->onEnableFullScreenDragSettingChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MzMotionGesture;->access$000(Lcom/android/internal/policy/impl/MzMotionGesture;)V

    .line 459
    return-void
.end method
