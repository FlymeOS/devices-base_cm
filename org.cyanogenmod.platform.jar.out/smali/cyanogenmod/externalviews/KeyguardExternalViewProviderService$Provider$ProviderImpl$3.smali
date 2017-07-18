.class Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;
.super Ljava/lang/Object;
.source "KeyguardExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->onKeyguardShowing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

.field final synthetic val$screenOn:Z


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)V
    .locals 0
    .param p1, "this$2"    # Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
    .param p2, "val$screenOn"    # Z

    .prologue
    .line 182
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;->this$2:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iput-boolean p2, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;->val$screenOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;->this$2:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-boolean v1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$3;->val$screenOn:Z

    invoke-virtual {v0, v1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->onKeyguardShowing(Z)V

    .line 184
    return-void
.end method
