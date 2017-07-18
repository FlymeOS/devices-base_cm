.class public Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;
.super Ljava/lang/Exception;
.source "KeepalivePacketData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/KeepalivePacketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidPacketException"
.end annotation


# instance fields
.field public final error:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 95
    iput p1, p0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;->error:I

    .line 94
    return-void
.end method
