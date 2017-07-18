.class public Lcom/android/internal/telephony/Connection$Capability;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capability"
.end annotation


# static fields
.field public static final SUPPORTS_DOWNGRADE_TO_VOICE_LOCAL:I = 0x1

.field public static final SUPPORTS_DOWNGRADE_TO_VOICE_REMOTE:I = 0x2

.field public static final SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x4

.field public static final SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
