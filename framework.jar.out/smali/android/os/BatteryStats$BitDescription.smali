.class public final Landroid/os/BatteryStats$BitDescription;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitDescription"
.end annotation


# instance fields
.field public final mask:I

.field public final name:Ljava/lang/String;

.field public final shift:I

.field public final shortName:Ljava/lang/String;

.field public final shortValues:[Ljava/lang/String;

.field public final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "shift"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "shortName"    # Ljava/lang/String;
    .param p5, "values"    # [Ljava/lang/String;
    .param p6, "shortValues"    # [Ljava/lang/String;

    .prologue
    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 1019
    iput p2, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 1020
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 1021
    iput-object p4, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 1022
    iput-object p5, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 1023
    iput-object p6, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    .line 1024
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 1009
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 1010
    iput-object p2, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 1011
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 1012
    iput-object v1, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 1013
    iput-object v1, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    .line 1014
    return-void
.end method
