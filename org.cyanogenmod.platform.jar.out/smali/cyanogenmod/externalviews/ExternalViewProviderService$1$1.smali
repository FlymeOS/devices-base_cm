.class Lcyanogenmod/externalviews/ExternalViewProviderService$1$1;
.super Ljava/lang/Object;
.source "ExternalViewProviderService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/ExternalViewProviderService$1;->createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$1;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/ExternalViewProviderService$1;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcyanogenmod/externalviews/ExternalViewProviderService$1;
    .param p2, "val$options"    # Landroid/os/Bundle;

    .prologue
    .line 64
    iput-object p1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$1$1;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$1;

    iput-object p2, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$1$1;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$1$1;->this$1:Lcyanogenmod/externalviews/ExternalViewProviderService$1;

    iget-object v0, v0, Lcyanogenmod/externalviews/ExternalViewProviderService$1;->this$0:Lcyanogenmod/externalviews/ExternalViewProviderService;

    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalViewProviderService$1$1;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcyanogenmod/externalviews/ExternalViewProviderService;->createExternalView(Landroid/os/Bundle;)Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;->-get0(Lcyanogenmod/externalviews/ExternalViewProviderService$Provider;)Lcyanogenmod/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcyanogenmod/externalviews/ExternalViewProviderService$1$1;->call()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
