.class public final Lcom/android/server/print/PrintManagerService;
.super Lcom/android/server/SystemService;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    }
.end annotation


# instance fields
.field private final mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;-><init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 77
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "print"

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/print/PrintManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 82
    return-void
.end method

.method public onStartUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # invokes: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStarted(I)V
    invoke-static {v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$000(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    .line 87
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # invokes: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V
    invoke-static {v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$100(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    .line 92
    return-void
.end method
