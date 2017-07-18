.class Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;
.super Ljava/lang/Object;
.source "KeyguardExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->onLockscreenSlideOffsetChanged(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

.field final synthetic val$swipeProgress:F


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;F)V
    .locals 0
    .param p1, "this$2"    # Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
    .param p2, "val$swipeProgress"    # F

    .prologue
    .line 233
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;->this$2:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iput p2, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;->val$swipeProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;->this$2:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;

    iget v1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$8;->val$swipeProgress:F

    invoke-virtual {v0, v1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->onLockscreenSlideOffsetChanged(F)V

    .line 235
    return-void
.end method
