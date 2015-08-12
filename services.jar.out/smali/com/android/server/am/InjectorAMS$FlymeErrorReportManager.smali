.class Lcom/android/server/am/InjectorAMS$FlymeErrorReportManager;
.super Landroid/app/IFlymeErrorReportManager$Stub;
.source "InjectorAMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/InjectorAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlymeErrorReportManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/IFlymeErrorReportManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/InjectorAMS$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/InjectorAMS$1;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/am/InjectorAMS$FlymeErrorReportManager;-><init>()V

    return-void
.end method


# virtual methods
.method public setFlymeErrorListener(Landroid/app/IApplicationErrorListener;)V
    .locals 2
    .param p1, "applicationErrorListener"    # Landroid/app/IApplicationErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    # getter for: Lcom/android/server/am/InjectorAMS;->mErrorListenerLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/am/InjectorAMS;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_0
    # getter for: Lcom/android/server/am/InjectorAMS;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;
    invoke-static {}, Lcom/android/server/am/InjectorAMS;->access$100()Landroid/app/IApplicationErrorListener;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 61
    # setter for: Lcom/android/server/am/InjectorAMS;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;
    invoke-static {p1}, Lcom/android/server/am/InjectorAMS;->access$102(Landroid/app/IApplicationErrorListener;)Landroid/app/IApplicationErrorListener;

    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
