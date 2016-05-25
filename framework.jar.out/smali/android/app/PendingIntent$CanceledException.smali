.class public Landroid/app/PendingIntent$CanceledException;
.super Landroid/util/AndroidException;
.source "PendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanceledException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 163
    return-void
.end method
