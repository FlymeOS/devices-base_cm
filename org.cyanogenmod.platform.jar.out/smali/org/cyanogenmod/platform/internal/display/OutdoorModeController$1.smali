.class Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;
.super Ljava/lang/Object;
.source "OutdoorModeController.java"

# interfaces
.implements Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    .prologue
    .line 226
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransition(IF)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "ambientLux"    # F

    .prologue
    .line 229
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 230
    .local v0, "outdoor":Z
    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->-get0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_1

    monitor-exit v2

    .line 232
    return-void

    .line 229
    .end local v0    # "outdoor":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "outdoor":Z
    goto :goto_0

    .line 235
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-static {v1, v0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->-set0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;Z)Z

    .line 236
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->-wrap0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 228
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
