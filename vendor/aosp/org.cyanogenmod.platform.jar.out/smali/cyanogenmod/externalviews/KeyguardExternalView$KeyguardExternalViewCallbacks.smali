.class public interface abstract Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/KeyguardExternalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyguardExternalViewCallbacks"
.end annotation


# virtual methods
.method public abstract providerDied()V
.end method

.method public abstract requestDismiss()Z
.end method

.method public abstract requestDismissAndStartActivity(Landroid/content/Intent;)Z
.end method

.method public abstract slideLockscreenIn()V
.end method
