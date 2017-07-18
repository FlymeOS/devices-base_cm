.class Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$1;
.super Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub;
.source "KeyguardExternalViewProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    .prologue
    .line 104
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-direct {p0}, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 106
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$1$1;

    invoke-direct {v2, p0, p1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$1$1;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$1;Landroid/os/Bundle;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 113
    .local v0, "c":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/os/IBinder;>;"
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get1(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 v2, 0x0

    return-object v2
.end method
