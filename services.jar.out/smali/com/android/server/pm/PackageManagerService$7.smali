.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->scanDirLI(Ljava/io/File;IIJLandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$isPrebundled:Z

.field final synthetic val$prebundledUserId:I

.field final synthetic val$ref_currentTime:J

.field final synthetic val$ref_file:Ljava/io/File;

.field final synthetic val$ref_parseFlags:I

.field final synthetic val$ref_scanFlags:I

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;ZI)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$ref_file"    # Ljava/io/File;
    .param p3, "val$ref_parseFlags"    # I
    .param p4, "val$ref_scanFlags"    # I
    .param p5, "val$ref_currentTime"    # J
    .param p7, "val$user"    # Landroid/os/UserHandle;
    .param p8, "val$isPrebundled"    # Z
    .param p9, "val$prebundledUserId"    # I

    .prologue
    .line 5875
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_parseFlags:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_scanFlags:I

    iput-wide p5, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_currentTime:J

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$7;->val$user:Landroid/os/UserHandle;

    iput-boolean p8, p0, Lcom/android/server/pm/PackageManagerService$7;->val$isPrebundled:Z

    iput p9, p0, Lcom/android/server/pm/PackageManagerService$7;->val$prebundledUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 5879
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_parseFlags:I

    or-int/lit8 v2, v2, 0x4

    .line 5880
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_scanFlags:I

    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_currentTime:J

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$7;->val$user:Landroid/os/UserHandle;

    .line 5879
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->-wrap1(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;

    .line 5881
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$7;->val$isPrebundled:Z
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 5884
    :try_start_1
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_parseFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 5891
    .local v9, "pkg":Landroid/content/pm/PackageParser$Package;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$7;->val$prebundledUserId:I

    .line 5892
    iget-object v2, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5891
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->markPrebundledPackageInstalledLPr(ILjava/lang/String;)V

    .line 5894
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 5895
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v10, Landroid/content/pm/UserInfo;->id:I

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$7;->val$prebundledUserId:I

    if-eq v0, v1, :cond_0

    .line 5898
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v1, v10, Landroid/content/pm/UserInfo;->id:I

    .line 5899
    iget-object v2, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5898
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->markPrebundledPackageInstalledLPr(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5902
    .end local v9    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v11    # "userInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    .line 5903
    .local v8, "e":Lcom/android/server/pm/PackageManagerException;
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_parseFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 5907
    iget v0, v8, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 5908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Deleting invalid package at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->logCriticalInfo(ILjava/lang/String;)V

    .line 5909
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5910
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)I

    .line 5876
    .end local v8    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_1
    :goto_1
    return-void

    .line 5885
    :catch_1
    move-exception v7

    .line 5886
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    :try_start_3
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerException;->from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5912
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v8    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->val$ref_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method
