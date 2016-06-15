.class final Landroid/content/ContentProvider$FlymeInjector;
.super Ljava/lang/Object;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static mAccessControlManager:Lmeizu/security/AccessControlManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isCurentLockApp(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 15
    .param p0, "dst"    # Landroid/content/ContentProvider;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 1963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1964
    .local v10, "uid":I
    invoke-virtual {p0}, Landroid/content/ContentProvider;->flymeGetFieldMyUid()I

    move-result v11

    invoke-static {v10, v11}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1965
    const/4 v11, 0x0

    .line 2019
    :goto_0
    return v11

    .line 1968
    :cond_0
    sget-object v11, Landroid/content/ContentProvider$FlymeInjector;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v11, :cond_1

    .line 1969
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "access_control"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmeizu/security/AccessControlManager;

    sput-object v11, Landroid/content/ContentProvider$FlymeInjector;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 1971
    :cond_1
    sget-object v11, Landroid/content/ContentProvider$FlymeInjector;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v11, :cond_2

    .line 1972
    const/4 v11, 0x0

    goto :goto_0

    .line 1975
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 1976
    .local v6, "name":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 1977
    const/4 v11, 0x0

    goto :goto_0

    .line 1979
    :cond_3
    const/4 v4, 0x0

    .line 1981
    .local v4, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-interface {v11, v6, v12, v13}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1985
    :goto_1
    if-eqz v4, :cond_a

    .line 1986
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string/jumbo v12, "ownerPackage"

    const-string/jumbo v13, "string"

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1987
    .local v9, "ownerPackageId":I
    const/4 v8, 0x0

    .line 1988
    .local v8, "ownerPackage":Ljava/lang/String;
    if-lez v9, :cond_4

    .line 1989
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1991
    :cond_4
    sget-object v11, Landroid/content/ContentProvider$FlymeInjector;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v12, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    sget-object v11, Landroid/content/ContentProvider$FlymeInjector;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v11, v8}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1992
    :cond_5
    if-eqz v8, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1993
    const/4 v11, 0x0

    goto :goto_0

    .line 1996
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v13, 0x80

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1997
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_7

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_7

    .line 1998
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v12, "needAccessData"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 1999
    .local v7, "needAccessData":Z
    if-nez v7, :cond_7

    .line 2000
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2003
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "needAccessData":Z
    :catch_0
    move-exception v11

    .line 2005
    :cond_7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "believePackages"

    const-string v13, "array"

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2006
    .local v2, "believePackageId":I
    if-lez v2, :cond_9

    .line 2007
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2008
    .local v3, "believePackages":[Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 2009
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v11, v3

    if-ge v5, v11, :cond_9

    .line 2010
    aget-object v11, v3, v5

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2011
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2009
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2016
    .end local v3    # "believePackages":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2019
    .end local v2    # "believePackageId":I
    .end local v8    # "ownerPackage":Ljava/lang/String;
    .end local v9    # "ownerPackageId":I
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1982
    :catch_1
    move-exception v11

    goto/16 :goto_1
.end method
