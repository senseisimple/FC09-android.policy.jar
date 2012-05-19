.class public Lcom/android/internal/policy/impl/RecentApplicationsDialog;
.super Landroid/app/Dialog;
.source "RecentApplicationsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DBG_FORCE_EMPTY_LIST:Z = false

.field public static final INTENT_ACTION_JOB_MANAGER:Ljava/lang/String; = "com.sec.android.app.controlpanel.MAIN"

.field private static final LOG_TAG:Ljava/lang/String; = "RecentApplicationDialog"

.field private static final MAX_RECENT_TASKS:I = 0xc

.field private static final NUM_BUTTONS:I = 0x6

.field private static sStatusBar:Landroid/app/StatusBarManager;


# instance fields
.field mAppsText:Landroid/view/View;

.field mBroadcastIntentFilter:Landroid/content/IntentFilter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mButtons:[Landroid/view/View;

.field mCleanup:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private mIconSize:I

.field private mJobManagerBtn:Landroid/widget/Button;

.field private mJobManagerBtnSecond:Landroid/widget/Button;

.field mNoAppsText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 83
    const v1, 0x10300a9

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    .line 63
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    .line 331
    new-instance v1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, resources:Landroid/content/res/Resources;
    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIconSize:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/RecentApplicationsDialog;Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private isJobManagerInstalled()Z
    .registers 5

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 228
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.controlpanel.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1d

    const/4 v3, 0x1

    :goto_1c
    return v3

    :cond_1d
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method private reloadButtons()V
    .registers 22

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 240
    .local v8, context:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 241
    .local v15, pm:Landroid/content/pm/PackageManager;
    const-string v19, "activity"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 243
    .local v5, am:Landroid/app/ActivityManager;
    const/16 v19, 0xc

    const/16 v20, 0x0

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v16

    .line 246
    .local v16, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v20, "android.intent.category.HOME"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    const/16 v20, 0x0

    move-object v0, v15

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 253
    .local v9, homeInfo:Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x0

    .line 254
    .local v7, button:I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    .line 255
    .local v14, numTasks:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3e
    if-ge v10, v14, :cond_10a

    const/16 v19, 0x6

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_10a

    .line 256
    move-object/from16 v0, v16

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 261
    .local v12, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v13, Landroid/content/Intent;

    move-object v0, v12

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 262
    .local v13, intent:Landroid/content/Intent;
    move-object v0, v12

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6f

    .line 263
    move-object v0, v12

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 267
    :cond_6f
    if-eqz v9, :cond_a6

    .line 268
    move-object v0, v9

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a6

    move-object v0, v9

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a6

    .line 255
    :cond_a3
    :goto_a3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    .line 276
    :cond_a6
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v19

    const v20, -0x200001

    and-int v19, v19, v20

    const/high16 v20, 0x1000

    or-int v19, v19, v20

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    const/16 v19, 0x0

    move-object v0, v15

    move-object v1, v13

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v17

    .line 279
    .local v17, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v17, :cond_a3

    .line 280
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    .line 281
    .local v4, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v4, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 282
    .local v18, title:Ljava/lang/String;
    invoke-virtual {v4, v15}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 284
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_a3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_a3

    if-eqz v11, :cond_a3

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    move-object/from16 v19, v0

    aget-object v6, v19, v7

    .line 286
    .local v6, b:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v18

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 287
    invoke-virtual {v6, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 288
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 290
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 291
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    .line 297
    .end local v4           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #b:Landroid/view/View;
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v12           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v17           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v18           #title:Ljava/lang/String;
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v7, :cond_17d

    const/16 v20, 0x0

    :goto_114
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mAppsText:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v7, :cond_180

    const/16 v20, 0x8

    :goto_121
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->isJobManagerInstalled()Z

    move-result v19

    if-eqz v19, :cond_166

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mJobManagerBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mJobManagerBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x10404de

    move-object v0, v8

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mJobManagerBtnSecond:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mJobManagerBtnSecond:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x10404de

    move-object v0, v8

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_166
    :goto_166
    const/16 v19, 0x6

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_183

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 309
    add-int/lit8 v7, v7, 0x1

    goto :goto_166

    .line 297
    :cond_17d
    const/16 v20, 0x8

    goto :goto_114

    .line 298
    :cond_180
    const/16 v20, 0x0

    goto :goto_121

    .line 312
    :cond_183
    return-void
.end method

.method private setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .parameter "theButton"
    .parameter "theTitle"
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 318
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 319
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    if-eqz p3, :cond_12

    .line 321
    iget v2, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIconSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIconSize:I

    invoke-virtual {p3, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    :cond_12
    invoke-virtual {v1, v4, p3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 324
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    .line 146
    new-instance v5, Landroid/content/Intent;

    const-string v7, "CLOSE_CONTEXT_MENU"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v5, intentCloseContext:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_12
    if-ge v3, v6, :cond_4e

    aget-object v1, v0, v3

    .line 152
    .local v1, b:Landroid/view/View;
    if-ne v1, p1, :cond_2c

    .line 158
    :try_start_18
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 159
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_2c

    .line 160
    const/high16 v7, 0x10

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_2f

    .line 151
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 163
    :catch_2f
    move-exception v7

    move-object v2, v7

    .line 164
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "RecentApplicationDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 171
    .end local v1           #b:Landroid/view/View;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4e
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mJobManagerBtn:Landroid/widget/Button;

    if-eq v7, p1, :cond_56

    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mJobManagerBtnSecond:Landroid/widget/Button;

    if-ne v7, p1, :cond_6f

    .line 172
    :cond_56
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.sec.android.app.controlpanel.MAIN"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v7, "recent_app_dialog_start"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    const/high16 v7, 0x1000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->dismiss()V

    .line 179
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/high16 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 97
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 101
    .local v2, context:Landroid/content/Context;
    sget-object v6, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-nez v6, :cond_19

    .line 102
    const-string v6, "statusbar"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    sput-object v6, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    .line 105
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 106
    .local v5, theWindow:Landroid/view/Window;
    invoke-virtual {v5, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 107
    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 108
    invoke-virtual {v5, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 110
    invoke-virtual {v5, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 112
    const-string v6, "Recents"

    invoke-virtual {v5, v6}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    const v6, 0x1090055

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->setContentView(I)V

    .line 116
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    const/4 v7, 0x0

    const v8, 0x1020225

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    .line 117
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    const v7, 0x1020019

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v6, v10

    .line 118
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    const v7, 0x102001a

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v6, v9

    .line 119
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    const/4 v7, 0x3

    const v8, 0x102001b

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    .line 120
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    const/4 v7, 0x4

    const v8, 0x1020226

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    .line 121
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    const/4 v7, 0x5

    const v8, 0x1020227

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    .line 122
    const v6, 0x1020222

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    .line 123
    const v6, 0x1020224

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mAppsText:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_92
    if-ge v3, v4, :cond_9c

    aget-object v1, v0, v3

    .line 126
    .local v1, b:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 130
    .end local v1           #b:Landroid/view/View;
    :cond_9c
    const v6, 0x1020223

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mJobManagerBtn:Landroid/widget/Button;

    .line 131
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mJobManagerBtn:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v6, 0x1020228

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mJobManagerBtnSecond:Landroid/widget/Button;

    .line 134
    iget-object v6, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mJobManagerBtnSecond:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 190
    const v1, 0x1020221

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 191
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->reloadButtons()V

    .line 196
    sget-object v1, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_27

    .line 197
    sget-object v1, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 201
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 213
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_d

    .line 214
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 218
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method
