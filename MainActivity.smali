# classes.dex

.class public Lcom/easyvictory/cheto/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static instance:Lcom/easyvictory/cheto/MainActivity; = null

.field private static isAnyRequestProcessing:Z = false


# instance fields
.field gActivity:Landroid/app/Activity;

.field shouldInstallAssistApp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object p0, p0, Lcom/easyvictory/cheto/MainActivity;->gActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/easyvictory/cheto/MainActivity;->shouldInstallAssistApp:Z

    return-void
.end method

.method private native XXXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method static synthetic access$000(Lcom/easyvictory/cheto/MainActivity;)Ljava/lang/String;
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/easyvictory/cheto/MainActivity;->getDevInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/easyvictory/cheto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/easyvictory/cheto/MainActivity;->XXXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .line 47
    sput-boolean p0, Lcom/easyvictory/cheto/MainActivity;->isAnyRequestProcessing:Z

    return p0
.end method

.method private native dfdfh(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getCredentials()V
    .registers 6

    const-wide v0, -0x971fb5aa520L

    .line 556
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/easyvictory/cheto/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide v1, -0x97dfb5aa520L

    .line 557
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x986fb5aa520L

    .line 558
    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f09023f

    .line 560
    invoke-virtual {p0, v2}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901a2

    .line 561
    invoke-virtual {p0, v3}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 562
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getDevInfo()Ljava/lang/String;
    .registers 9

    const-wide v0, -0x7c9fb5aa520L

    .line 417
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x7cafb5aa520L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, -0x7d4fb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, -0x7dcfb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, -0x7e4fb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, -0x7ecfb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, -0x7f5fb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x804fb5aa520L

    .line 425
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 426
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_f4
    if-ge v5, v4, :cond_119

    aget-object v6, v3, v5

    .line 427
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v6, -0x807fb5aa520L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_f4

    .line 430
    :cond_119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, -0x809fb5aa520L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v3, -0x80bfb5aa520L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    const/4 p1, 0x0

    return-object p1
.end method

.method private isNetworkAvailable()Z
    .registers 3

    const-wide v0, -0x7a1fb5aa520L

    .line 403
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 405
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 406
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method private matchWithGameABI()Z
    .registers 5

    const-wide v0, -0x5a7fb5aa520L

    .line 67
    :try_start_5
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/easyvictory/cheto/MainActivity;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 68
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-wide v1, -0x5c2fb5aa520L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-wide v2, -0x5c8fb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_33

    if-ne v0, v1, :cond_3b

    const/4 v0, 0x1

    return v0

    :catchall_33
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :cond_3b
    const/4 v0, 0x0

    return v0
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-wide v1, -0x7aefb5aa520L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static saveCredentials(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    const-wide v0, -0x953fb5aa520L

    .line 548
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 549
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-wide v0, -0x95ffb5aa520L

    .line 550
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-wide v0, -0x968fb5aa520L

    .line 551
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method checkMatchWithGameABI()Z
    .registers 5

    .line 81
    invoke-direct {p0}, Lcom/easyvictory/cheto/MainActivity;->matchWithGameABI()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 83
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110049

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110055

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/easyvictory/cheto/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/easyvictory/cheto/MainActivity$2;-><init>(Lcom/easyvictory/cheto/MainActivity;)V

    const v3, 0x7f1100d5

    .line 87
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/easyvictory/cheto/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/easyvictory/cheto/MainActivity$1;-><init>(Lcom/easyvictory/cheto/MainActivity;)V

    const v3, 0x7f11004d

    .line 97
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x1

    :goto_3b
    return v1
.end method

.method createOver()V
    .registers 3

    const v0, 0x7f09010c

    .line 392
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 393
    new-instance v1, Lcom/easyvictory/cheto/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/MainActivity$5;-><init>(Lcom/easyvictory/cheto/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method getAssistUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-wide v2, -0x696fb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide v1, -0x6a1fb5aa520L

    .line 153
    :try_start_17
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/hack/utils/FileUtils;->extractAsset(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_4b

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide v2, -0x6acfb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/easyvictory/cheto/HackProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {p1, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :catch_4b
    move-exception p1

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method installAssist()V
    .registers 5

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-wide v1, -0x5cefb5aa520L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p0}, Lcom/easyvictory/cheto/MainActivity;->getAssistUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const-wide v2, -0x5e9fb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x3e7

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/easyvictory/cheto/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method logEvent(Ljava/lang/String;)V
    .registers 8

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide v1, -0x63afb5aa520L

    .line 127
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v1, -0x643fb5aa520L

    .line 128
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v1, -0x64bfb5aa520L

    .line 129
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v1, -0x651fb5aa520L

    .line 130
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v1, -0x657fb5aa520L

    .line 131
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v1, -0x65dfb5aa520L

    .line 132
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v1, -0x664fb5aa520L

    .line 133
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v1, -0x671fb5aa520L

    .line 135
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    .line 136
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_76
    if-ge v3, v2, :cond_9b

    aget-object v4, v1, v3

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide v4, -0x674fb5aa520L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    .line 140
    :cond_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide v1, -0x676fb5aa520L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide v1, -0x678fb5aa520L

    .line 142
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object p1, Lcom/easyvictory/cheto/App;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-wide v1, -0x687fb5aa520L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .line 335
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_91

    .line 338
    iget-boolean p1, p0, Lcom/easyvictory/cheto/MainActivity;->shouldInstallAssistApp:Z

    const p2, 0x7f09010c

    const p3, 0x7f090015

    const v0, 0x7f090146

    const/4 v1, 0x1

    if-eqz p1, :cond_53

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide v2, -0x79bfb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p0, p1}, Lcom/easyvictory/cheto/MainActivity;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 340
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 341
    invoke-virtual {p0, p3}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 342
    invoke-virtual {p0, p2}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_a2

    .line 344
    :cond_4f
    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->installAssist()V

    goto :goto_a2

    .line 348
    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide v2, -0x79efb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p0, p1}, Lcom/easyvictory/cheto/MainActivity;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_8d

    .line 349
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 350
    invoke-virtual {p0, p3}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 351
    invoke-virtual {p0, p2}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_a2

    .line 353
    :cond_8d
    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->uninstallAssist()V

    goto :goto_a2

    :cond_91
    const/16 p2, 0x3e5

    if-ne p1, p2, :cond_a2

    .line 358
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/easyvictory/cheto/MainActivity$4;

    invoke-direct {p2, p0}, Lcom/easyvictory/cheto/MainActivity$4;-><init>(Lcom/easyvictory/cheto/MainActivity;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 380
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_a2
    :goto_a2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_104

    goto/16 :goto_102

    .line 440
    :sswitch_b
    sget-boolean p1, Lcom/easyvictory/cheto/MainActivity;->isAnyRequestProcessing:Z

    if-eqz p1, :cond_1b

    const p1, 0x7f1100e3

    .line 441
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_102

    :cond_1b
    const p1, 0x7f09023f

    .line 445
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v2, 0x7f0901a2

    .line 446
    invoke-virtual {p0, v2}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 448
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    sput-boolean v0, Lcom/easyvictory/cheto/MainActivity;->isAnyRequestProcessing:Z

    const v0, 0x7f090145

    .line 452
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/MainActivity$6;

    invoke-direct {v1, p0, p1, v2}, Lcom/easyvictory/cheto/MainActivity$6;-><init>(Lcom/easyvictory/cheto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 511
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_102

    :sswitch_58
    const-wide v0, -0x81cfb5aa520L

    .line 519
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_102

    :sswitch_66
    const-wide v0, -0x835fb5aa520L

    .line 522
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_102

    :sswitch_74
    const-wide v2, -0x854fb5aa520L

    .line 525
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    .line 526
    invoke-static {}, Lcom/easyvictory/cheto/Constant;->getGamePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_ce

    const p1, 0x7f1100e4

    .line 527
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 530
    :try_start_90
    new-instance p1, Landroid/content/Intent;

    const-wide v0, -0x86ffb5aa520L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x88afb5aa520L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_ae
    .catch Landroid/content/ActivityNotFoundException; {:try_start_90 .. :try_end_ae} :catch_af

    goto :goto_102

    .line 532
    :catch_af
    new-instance p1, Landroid/content/Intent;

    const-wide v0, -0x8b9fb5aa520L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x8d4fb5aa520L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_102

    :cond_ce
    const-wide v2, -0x91dfb5aa520L

    .line 538
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/hack/opensdk/HackApi;->installPackageFromHost(Ljava/lang/String;IZ)I

    .line 539
    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/easyvictory/cheto/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-wide v2, -0x938fb5aa520L

    .line 540
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x200000

    .line 541
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 542
    invoke-static {p1, v1}, Lcom/hack/opensdk/HackApi;->startActivity(Landroid/content/Intent;I)I

    goto :goto_102

    .line 515
    :sswitch_f8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/easyvictory/cheto/RegisterActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_102
    return-void

    nop

    :sswitch_data_104
    .sparse-switch
        0x7f090015 -> :sswitch_f8
        0x7f090044 -> :sswitch_74
        0x7f090113 -> :sswitch_66
        0x7f090114 -> :sswitch_58
        0x7f090146 -> :sswitch_b
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    sput-object p0, Lcom/easyvictory/cheto/MainActivity;->instance:Lcom/easyvictory/cheto/MainActivity;

    const p1, 0x7f0c001e

    .line 169
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->setContentView(I)V

    const p1, 0x7f090145

    .line 170
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090114

    .line 172
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090113

    .line 173
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->createOver()V

    .line 177
    invoke-direct {p0}, Lcom/easyvictory/cheto/MainActivity;->getCredentials()V

    const p1, 0x7f09023f

    .line 179
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0901a2

    .line 180
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->logEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 189
    :try_start_4f
    invoke-static {}, Lcom/hack/opensdk/HackApi;->isSupportBpf()Z

    move-result v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_54

    goto :goto_55

    :catchall_54
    move v0, p1

    :goto_55
    if-nez v0, :cond_5f

    .line 195
    new-instance v0, Lcom/easyvictory/cheto/MainActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/easyvictory/cheto/MainActivity$3;-><init>(Lcom/easyvictory/cheto/MainActivity;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5f
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-wide v2, -0x6aefb5aa520L

    .line 224
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-wide v2, -0x6c2fb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-wide v4, -0x6d5fb5aa520L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 233
    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->checkMatchWithGameABI()Z

    move-result v2

    if-nez v2, :cond_8c

    return-void

    :cond_8c
    const-wide v4, -0x6f0fb5aa520L

    .line 236
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_ad

    new-array v2, v3, [Ljava/lang/String;

    const-wide v4, -0x71afb5aa520L

    .line 237
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p1

    const/16 v4, 0x3e6

    invoke-static {p0, v2, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_ad
    move v2, p1

    :goto_ae
    if-ge v2, v0, :cond_d5

    .line 241
    aget-object v4, v1, v2

    .line 242
    invoke-direct {p0, p0, v4}, Lcom/easyvictory/cheto/MainActivity;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_d2

    .line 243
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v6, :cond_d2

    .line 244
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-wide v6, -0x744fb5aa520L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cf

    .line 245
    iput-boolean v3, p0, Lcom/easyvictory/cheto/MainActivity;->shouldInstallAssistApp:Z

    .line 249
    :cond_cf
    :try_start_cf
    invoke-static {v4, p1, v3}, Lcom/hack/opensdk/HackApi;->installPackageFromHost(Ljava/lang/String;IZ)I
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d2

    :catchall_d2
    :cond_d2
    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    .line 257
    :cond_d5
    :try_start_d5
    invoke-static {p1, p1}, Lcom/hack/opensdk/HackApi;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10a

    .line 259
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_df
    :goto_df
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move v5, p1

    :goto_ec
    if-ge v5, v0, :cond_fb

    .line 261
    aget-object v6, v1, v5

    .line 262
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f8

    move v5, p1

    goto :goto_fc

    :cond_f8
    add-int/lit8 v5, v5, 0x1

    goto :goto_ec

    :cond_fb
    move v5, v3

    :goto_fc
    if-eqz v5, :cond_df

    .line 269
    invoke-static {v4, p1}, Lcom/hack/opensdk/HackApi;->uninstallPackage(Ljava/lang/String;I)I
    :try_end_101
    .catchall {:try_start_d5 .. :try_end_101} :catchall_102

    goto :goto_df

    :catchall_102
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 280
    :cond_10a
    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const v1, 0x7f09010c

    const v2, 0x7f090015

    const v4, 0x7f090146

    if-eqz v0, :cond_1b4

    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-wide v5, -0x74afb5aa520L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 281
    iget-boolean v0, p0, Lcom/easyvictory/cheto/MainActivity;->shouldInstallAssistApp:Z

    if-nez v0, :cond_159

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v5, -0x750fb5aa520L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/easyvictory/cheto/MainActivity;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_159

    goto :goto_15a

    :cond_159
    move v3, p1

    :goto_15a
    if-eqz v3, :cond_174

    .line 283
    invoke-virtual {p0, v4}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 284
    invoke-virtual {p0, v2}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 285
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->uninstallAssist()V

    .line 289
    :cond_174
    iget-boolean v0, p0, Lcom/easyvictory/cheto/MainActivity;->shouldInstallAssistApp:Z

    if-eqz v0, :cond_1b4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v5, -0x753fb5aa520L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/easyvictory/cheto/MainActivity;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_1b4

    .line 290
    invoke-virtual {p0, v4}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 291
    invoke-virtual {p0, v2}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 292
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 293
    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->installAssist()V

    .line 298
    :cond_1b4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide v5, -0x756fb5aa520L

    .line 300
    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/easyvictory/cheto/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 301
    invoke-virtual {v5, v3}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_219

    .line 302
    invoke-virtual {p0, v4}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->setClickable(Z)V

    .line 303
    invoke-virtual {p0, v2}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 304
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    const-wide v1, -0x75cfb5aa520L

    .line 307
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x792fb5aa520L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 p1, 0x3e5

    .line 309
    invoke-virtual {p0, v0, p1}, Lcom/easyvictory/cheto/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_219
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 387
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 568
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 569
    invoke-direct {p0}, Lcom/easyvictory/cheto/MainActivity;->getCredentials()V

    const v0, 0x7f09023f

    .line 571
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901a2

    .line 572
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 573
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4c

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_4c

    const v0, 0x7f090146

    .line 574
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 575
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    const v0, 0x7f110027

    const/4 v1, 0x0

    .line 576
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4c
    return-void
.end method

.method uninstallAssist()V
    .registers 5

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-wide v1, -0x611fb5aa520L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x62efb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easyvictory/cheto/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide v2, -0x637fb5aa520L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x3e7

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/easyvictory/cheto/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
