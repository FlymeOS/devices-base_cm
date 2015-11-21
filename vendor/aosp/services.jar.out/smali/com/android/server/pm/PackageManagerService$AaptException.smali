.class public Lcom/android/server/pm/PackageManagerService$AaptException;
.super Ljava/lang/Exception;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AaptException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 7082
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AaptException;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7083
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7084
    return-void
.end method
