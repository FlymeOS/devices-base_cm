.class Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$7;
.super Ljava/lang/Object;
.source "KeyguardExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->onScreenTurnedOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V
    .locals 0
    .param p1, "this$2"    # Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    .prologue
    .line 222
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$7;->this$2:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->onScreenTurnedOff()V

    .line 224
    return-void
.end method
