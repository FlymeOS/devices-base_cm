.class public abstract Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;
.super Ljava/lang/Object;
.source "KeyguardExternalViewProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

.field private final mOptions:Landroid/os/Bundle;

.field final synthetic this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;


# direct methods
.method static synthetic -get0(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;)Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->mImpl:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    return-object v0
.end method

.method protected constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "this$0"    # Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 474
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-direct {v0, p0, p0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;-><init>(Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;)V

    iput-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->mImpl:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    .line 475
    iput-object p2, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->mOptions:Landroid/os/Bundle;

    .line 474
    return-void
.end method


# virtual methods
.method protected final collapseNotificationPanel()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    return-void
.end method

.method protected getOptions()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method final getWindowFlags()I
    .locals 1

    .prologue
    .line 632
    const v0, 0x80720

    return v0
.end method

.method final getWindowType()I
    .locals 1

    .prologue
    .line 628
    const/16 v0, 0xbb6

    return v0
.end method

.method protected onAttach()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method protected abstract onBouncerShowing(Z)V
.end method

.method protected abstract onCreateView()Landroid/view/View;
.end method

.method protected onDetach()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method protected abstract onKeyguardDismissed()V
.end method

.method protected abstract onKeyguardShowing(Z)V
.end method

.method protected onLockscreenSlideOffsetChanged(F)V
    .locals 0
    .param p1, "swipeProgress"    # F

    .prologue
    .line 554
    return-void
.end method

.method protected abstract onScreenTurnedOff()V
.end method

.method protected abstract onScreenTurnedOn()V
.end method

.method protected final requestDismiss()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->mImpl:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->requestDismiss()Z

    move-result v0

    return v0
.end method

.method protected final requestDismissAndStartActivity(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 588
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->mImpl:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-virtual {v0, p1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->requestDismissAndStartActivity(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected final setInteractivity(Z)V
    .locals 1
    .param p1, "isInteractive"    # Z

    .prologue
    .line 615
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->mImpl:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-virtual {v0, p1}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->setInteractivity(Z)V

    .line 614
    return-void
.end method

.method protected final slideLockscreenIn()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider;->mImpl:Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->slideLockscreenIn()V

    .line 623
    return-void
.end method
