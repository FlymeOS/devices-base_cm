.class public final Lcom/android/server/pm/PackageDefaultOpService$Op;
.super Ljava/lang/Object;
.source "PackageDefaultOpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageDefaultOpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field public activate:Z

.field public newVersion:I

.field public oldVersion:I

.field public packageName:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIZ)V
    .locals 0
    .param p1, "_uid"    # I
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_oldVersion"    # I
    .param p4, "_newVersion"    # I
    .param p5, "_activate"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/server/pm/PackageDefaultOpService$Op;->uid:I

    .line 50
    iput-object p2, p0, Lcom/android/server/pm/PackageDefaultOpService$Op;->packageName:Ljava/lang/String;

    .line 51
    iput p3, p0, Lcom/android/server/pm/PackageDefaultOpService$Op;->oldVersion:I

    .line 52
    iput p4, p0, Lcom/android/server/pm/PackageDefaultOpService$Op;->newVersion:I

    .line 53
    iput-boolean p5, p0, Lcom/android/server/pm/PackageDefaultOpService$Op;->activate:Z

    .line 48
    return-void
.end method
