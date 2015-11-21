.class public Landroid/drm/DrmStore$DrmDeliveryType;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmDeliveryType"
.end annotation


# static fields
.field public static final COMBINED_DELIVERY:I = 0x2

.field public static final FORWARD_LOCK:I = 0x1

.field public static final SEPARATE_DELIVERY:I = 0x3

.field public static final SEPARATE_DELIVERY_FL:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
