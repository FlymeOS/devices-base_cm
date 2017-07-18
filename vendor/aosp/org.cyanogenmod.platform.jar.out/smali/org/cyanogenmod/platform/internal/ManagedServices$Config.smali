.class public Lorg/cyanogenmod/platform/internal/ManagedServices$Config;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Config"
.end annotation


# instance fields
.field public bindPermission:Ljava/lang/String;

.field public caption:Ljava/lang/String;

.field public clientLabel:I

.field public secureSettingName:Ljava/lang/String;

.field public serviceInterface:Ljava/lang/String;

.field public settingsAction:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
