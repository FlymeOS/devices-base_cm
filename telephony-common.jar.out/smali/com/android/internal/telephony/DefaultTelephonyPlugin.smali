.class public Lcom/android/internal/telephony/DefaultTelephonyPlugin;
.super Lcom/android/internal/telephony/TelephonyPluginBase;
.source "DefaultTelephonyPlugin.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyPluginBase;-><init>()V

    .line 41
    const-string/jumbo v0, "DefaultTelephonyPlugin"

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultTelephonyPlugin;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method
