.class public final Lcom/android/server/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/server/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field public final isPrivileged:Z

.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_uid"    # I
    .param p3, "_isPrivileged"    # Z

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 139
    iput p2, p0, Lcom/android/server/AppOpsService$Ops;->uid:I

    .line 140
    iput-boolean p3, p0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    .line 141
    return-void
.end method
